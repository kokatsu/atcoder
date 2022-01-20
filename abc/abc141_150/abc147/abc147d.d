import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long M = 10 ^^ 9 + 7;

    long lim = 61;
    auto cnts = new long[][](lim, 2);
    foreach (a; A) {
        long num = a;

        foreach (i; 0 .. lim) {
            ++cnts[i][num%2];
            num /= 2;
        }
    }

    long res;
    foreach (i; 0 .. N-1) {
        long num = A[i], base = 1;

        foreach (j; 0 .. lim) {
            --cnts[j][num%2];
            res = (res + cnts[j][(num+1)%2] * base) % M;
            num /= 2;
            base = base * 2 % M;
        }
    }

    res.writeln;
}