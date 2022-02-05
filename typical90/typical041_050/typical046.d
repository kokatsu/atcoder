import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);
    auto C = readln.chomp.split.to!(int[]);

    int M = 46;

    auto Amod = new long[](M);
    auto Bmod = new long[](M);
    auto Cmod = new long[](M);
    foreach (i; 0 .. N) {
        ++Amod[A[i]%M];
        ++Bmod[B[i]%M];
        ++Cmod[C[i]%M];
    }

    long res;
    foreach (i; 0 .. M) {
        if (Amod[i] == 0) {
            continue;
        }

        foreach (j; 0 .. M) {
            if (Bmod[j] == 0) {
                continue;
            }

            int k = (M - (i + j) % M) % M;
            res += Amod[i] * Bmod[j] * Cmod[k];
        }
    }

    res.writeln;
}