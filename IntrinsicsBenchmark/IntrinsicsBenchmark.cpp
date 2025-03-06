#include<iostream>
#include<intrin.h>
#include<chrono>

using namespace std;

int main() {

	__m256d x1 = _mm256_set_pd(8.0, 4.0, 2.0, 1.0);
	__m256d x2 = _mm256_set_pd(2.0, 2.0, 2.0, 2.0);
	__m256d x3 = _mm256_setzero_pd();
	__m256d x4 = _mm256_setzero_pd();
	__m256d x5 = _mm256_set_pd(-120.0, -60.0, -30.0, -15.0);

	auto start = chrono::high_resolution_clock::now();
	//TODO: make manual loop unroll
	for (int i = 0; i < 10000000; i++) {
		x4 = _mm256_fmadd_pd(x1, x2, x3);
		x4 = _mm256_fmadd_pd(x4, x2, x3);
		x4 = _mm256_fmadd_pd(x4, x2, x3);
		x1 = _mm256_fmadd_pd(x4, x2, x5);
	}
	auto stop = chrono::high_resolution_clock::now();

	auto res = chrono::duration_cast<chrono::milliseconds>(stop - start);

	cout << "Time: " << res.count() << " milliseconds;" << endl;
}
