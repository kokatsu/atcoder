import std;

void main() {
    long N;
    readf("%d\n", N);

    long S = (N == 1 ? 0 : 1), d = 2;
    while (d * d <= N) {
        if (N % d == 0) {
            S += d;
            if (d * d != N)
                S += N / d;
        }

        ++d;
    }

    string res = "Perfect";
    if (S < N)
        res = "Deficient";
    if (S > N)
        res = "Abundant";

    res.writeln;
}
