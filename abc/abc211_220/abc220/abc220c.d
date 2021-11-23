import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long X;
    readf("%d\n", X);

    long S = A.sum;
    long res = (X / S) * N;
    long rem = X % S;
    if (rem == 0) {
        ++res;
    }
    else {
        foreach (i; 0 .. N) {
            rem -= A[i];
            ++res;
            if (rem < 0) {
                break;
            }
        }
    }

    res.writeln;
}