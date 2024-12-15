import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int x = A.back;
    foreach (i; 0 .. N - 1) {
        if (A[i] > A[i + 1]) {
            x = A[i];
            break;
        }
    }

    auto res = A.filter!(a => a != x).array;
    writefln("%(%s %)", res);
}
