import std;

void main() {
    long N, K, X;
    readf("%d %d %d\n", N, K, X);

    auto A = readln.chomp.split.to!(long[]);

    foreach (ref a; A) {
        long C = min(K, a / X);
        a -= C * X;
        K -= C;
    }

    if (K > 0) {
        A.sort!"a > b";

        foreach (ref a; A) {
            a = 0;
            --K;

            if (K <= 0)
                break;
        }
    }

    long res = A.sum;
    res.writeln;
}
