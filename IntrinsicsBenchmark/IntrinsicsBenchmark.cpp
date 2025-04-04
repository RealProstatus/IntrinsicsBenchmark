#include<iostream>
#include<intrin.h>
#include<chrono>
#include<omp.h>

/*

	This version of the code is optimized for an
	architecture with the AVX2 extension, with 16 
	vector registers YMM x0-x15

*/

using namespace std;

const long ITERATIONS = 500000000L;

int main() {
	double a[4], b[4], c[4], d[4], e[4], f[4];

	//the values of these registers do not change
	__m256d x1 = _mm256_set_pd(2.0, 2.0, 2.0, 2.0);
	__m256d x2 = _mm256_setzero_pd();
	__m256d x4 = _mm256_set_pd(-120.0, -60.0, -30.0, -15.0);
	//
	__m256d x0 = _mm256_set_pd(8.0, 4.0, 2.0, 1.0);
	__m256d x3 = _mm256_setzero_pd();
	//
	__m256d x5 = _mm256_set_pd(8.0, 4.0, 2.0, 1.0);
	__m256d x6 = _mm256_setzero_pd();
	//
	__m256d x7 = _mm256_set_pd(8.0, 4.0, 2.0, 1.0);
	__m256d x8 = _mm256_setzero_pd();
	//
	__m256d x9 = _mm256_set_pd(8.0, 4.0, 2.0, 1.0);
	__m256d x10 = _mm256_setzero_pd();
	//
	__m256d x11 = _mm256_set_pd(8.0, 4.0, 2.0, 1.0);
	__m256d x12 = _mm256_setzero_pd();
	//
	__m256d x13 = _mm256_set_pd(8.0, 4.0, 2.0, 1.0);
	__m256d x14 = _mm256_setzero_pd();
	

	auto start = omp_get_wtime();
#pragma omp parallel for
	for (int j = 0; j < 100; j++) {
#pragma omp parallel for
		for (long i = 0L; i < ITERATIONS; i++) {
			//
			x3 = _mm256_fmadd_pd(x0, x1, x2);
			x6 = _mm256_fmadd_pd(x5, x1, x2);
			x8 = _mm256_fmadd_pd(x7, x1, x2);
			x10 = _mm256_fmadd_pd(x9, x1, x2);
			x12 = _mm256_fmadd_pd(x11, x1, x2);
			x14 = _mm256_fmadd_pd(x13, x1, x2);
			//
			x3 = _mm256_fmadd_pd(x3, x1, x2);
			x6 = _mm256_fmadd_pd(x6, x1, x2);
			x8 = _mm256_fmadd_pd(x8, x1, x2);
			x10 = _mm256_fmadd_pd(x10, x1, x2);
			x12 = _mm256_fmadd_pd(x12, x1, x2);
			x14 = _mm256_fmadd_pd(x14, x1, x2);
			//
			x3 = _mm256_fmadd_pd(x3, x1, x2);
			x6 = _mm256_fmadd_pd(x6, x1, x2);
			x8 = _mm256_fmadd_pd(x8, x1, x2);
			x10 = _mm256_fmadd_pd(x10, x1, x2);
			x12 = _mm256_fmadd_pd(x12, x1, x2);
			x14 = _mm256_fmadd_pd(x14, x1, x2);
			//
			x0 = _mm256_fmadd_pd(x3, x1, x4);
			x5 = _mm256_fmadd_pd(x6, x1, x4);
			x7 = _mm256_fmadd_pd(x8, x1, x4);
			x9 = _mm256_fmadd_pd(x10, x1, x4);
			x11 = _mm256_fmadd_pd(x12, x1, x4);
			x13 = _mm256_fmadd_pd(x14, x1, x4);
		}
	}
	auto stop = omp_get_wtime();
	
	auto res = stop - start;

	_mm256_storeu_pd(a, x3);
	_mm256_storeu_pd(b, x6);
	_mm256_storeu_pd(c, x8);
	_mm256_storeu_pd(d, x10);
	_mm256_storeu_pd(e, x12);
	_mm256_storeu_pd(f, x14);
	for (int i = 0; i < 4; i++) {
		cout << a[i] << " " << b[i] << " " << c[i] << " " << d[i] << " " << e[i] << " " << f[i] << endl;
	}

	unsigned long long int flop = 100ULL * ITERATIONS * 24 * 2 * 4;
	cout << "Time: " << res << " seconds;" << endl;
	cout << "Performance: " << flop / (res * 1.0e9) << " GFLOPS" << endl;
	return 0;
}
