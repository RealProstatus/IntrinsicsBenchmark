#include<iostream>
#include<intrin.h>
#include<chrono>

using namespace std;

const long ITERATIONS = 500000000L;

int main() {
	double a[4];

	__m256d x1 = _mm256_set_pd(8.0, 4.0, 2.0, 1.0);
	__m256d x2 = _mm256_set_pd(2.0, 2.0, 2.0, 2.0);
	__m256d x3 = _mm256_setzero_pd();
	__m256d x4 = _mm256_setzero_pd();
	__m256d x5 = _mm256_set_pd(-120.0, -60.0, -30.0, -15.0);

	auto start = chrono::high_resolution_clock::now();
	for (int j = 0; j < 100; j++) {
#pragma omp parallel for
		for (long i = 0L; i < ITERATIONS; i++) {
			x4 = _mm256_fmadd_pd(x1, x2, x3);
			x4 = _mm256_fmadd_pd(x4, x2, x3);
			x4 = _mm256_fmadd_pd(x4, x2, x3);
			x1 = _mm256_fmadd_pd(x4, x2, x5);
		}
	}
	auto stop = chrono::high_resolution_clock::now();
	
	auto res = chrono::duration_cast<chrono::milliseconds>(stop - start);

	_mm256_storeu_pd(a, x4);
	for (int i = 0; i < 4; i++) {
		cout << a[i] << endl;
	}

	cout << "Time: " << res.count() << " milliseconds;" << endl;
	return 0;
}
