import std;

enum long L = 10L ^^ 6 + 2;

void main() {
    long N;
    readf("%d\n", N);

    long[] Q = readln.chomp.split.to!(long[]);
    long[] A = readln.chomp.split.to!(long[]);
    long[] B = readln.chomp.split.to!(long[]);

    long res;
    foreach (i; 0 .. L) {
        long num = L;
        foreach (j; 0 .. N) {
            if (Q[j] - A[j] * i < 0) {
                num = -1;
                break;
            }

            if (B[j] == 0) {
                continue;
            }

            num = min(num, (Q[j] - A[j] * i) / B[j]);
        }

        if (num >= 0) {
            res = max(res, num + i);
        }
    }

    res.writeln;
}
