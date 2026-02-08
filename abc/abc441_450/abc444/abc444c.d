import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    A.sort;

    int[] R;

    void f(int x) {
        int l, r = N - 1;
        while (r >= 0 && A[r] == x) {
            --r;
        }

        if (r % 2 == 0) {
            return;
        }

        while (l < r) {
            if (A[l++] + A[r--] != x) {
                return;
            }
        }

        R ~= x;
    }

    f(A[N - 1]);
    f(A[0] + A[N - 1]);

    string res = format("%(%d %)", R);
    res.writeln;
}
