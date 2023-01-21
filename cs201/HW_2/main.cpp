// Arda Iynem 22002717

#include <iostream>
#include <chrono>

using namespace std;

int naiveAlgorithm(int a, int n, int p) {
    int mod = 1;

    for (int i = 0; i < n; ++i)
        mod = (mod * a) % p;

    return mod;
}

int naiveAlgorithm_cycleShortcut(int a, int n, int p) {
    int mod = 1;

    for (int i = 0; i < n; ++i) {
        mod = (mod * a) % p;

        if (mod == 1) {
            for (int j = 0; j < n % (i + 1); ++j)
                mod = (mod * a) % p;
            return mod;
        }
    }

    return mod;
}

int recursiveAlgorithm(int a, int n, int p) {
    if (n == 1)
        return a % p;

    if (n % 2) {
        int tmp = recursiveAlgorithm(a, (n - 1) / 2, p);
        return (a * tmp * tmp) % p;
    }
    else {
        int tmp = recursiveAlgorithm(a, n / 2, p);
        return (tmp * tmp) % p;
    }
}

int main() {
    std::chrono::time_point <std::chrono::system_clock> startTime_Naive;
    std::chrono::time_point <std::chrono::system_clock> startTime_NaiveCycle;
    std::chrono::time_point <std::chrono::system_clock> startTime_Recursive;

    std::chrono::duration <double, milli> elapsedTime_Naive;
    std::chrono::duration <double, milli> elapsedTime_NaiveCycle;
    std::chrono::duration <double, milli> elapsedTime_Recursive;

    const int N_COEFFICIANT = 100000000;
    const int a = 67;
    const int N_SIZE = 14;
    const int P_SIZE = 3;
    int arr_n[N_SIZE];
    int arr_p[P_SIZE] = {101,1009,10007};

    for (int i = 0; i < N_SIZE; ++i)
        arr_n[i] = (i + 1) * N_COEFFICIANT;


    for (int i = 0; i < P_SIZE; ++i) {
        for (int j = 0; j < N_SIZE ; ++j) {
            cout << "CYCLE FOR N: " << arr_n[j] << " P: " << arr_p[i] << " STARTED" << endl << endl;

            startTime_NaiveCycle = std::chrono::system_clock::now();
            for (int k = 0; k < 1000; ++k) {
                naiveAlgorithm_cycleShortcut(a, arr_n[j], arr_p[i]);
            }
            elapsedTime_NaiveCycle = std::chrono::system_clock::now() - startTime_NaiveCycle;

            cout << "Execution of naive cycle took " << elapsedTime_NaiveCycle.count() / 1000 << " milliseconds." << endl;
        }
    }

    for (int i = 0; i < P_SIZE; ++i) {
        for (int j = 0; j < N_SIZE ; ++j) {
            cout << "CYCLE FOR N: " << arr_n[j] << " P: " << arr_p[i] << " STARTED" << endl << endl;

            startTime_Recursive = std::chrono::system_clock::now();
            for (int k = 0; k < 1000000; ++k) {
                recursiveAlgorithm(a, arr_n[j], arr_p[i]);
            }
            elapsedTime_Recursive = std::chrono::system_clock::now() - startTime_Recursive;

            cout << "Execution of recursive took " << elapsedTime_Recursive.count() / 1000000 << " milliseconds." << endl << endl;
        }
    }

    for (int i = 0; i < P_SIZE; ++i) {
        for (int j = 0; j < N_SIZE ; ++j) {
            cout << "CYCLE FOR N: " << arr_n[j] << " P: " << arr_p[i] << " STARTED" << endl << endl;

            startTime_Naive = std::chrono::system_clock::now();
            naiveAlgorithm(a, arr_n[j], arr_p[i]);
            elapsedTime_Naive = std::chrono::system_clock::now() - startTime_Naive;

            cout << "Execution of naive took " << elapsedTime_Naive.count() << " milliseconds." << endl;
        }
    }
    return 0;
}
