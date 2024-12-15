import std;

void main() {
    int K;
    readf("%d\n", K);

    auto S = readln.chomp;
    auto T = readln.chomp;

    auto A = new long[](10);
    foreach (i; 0 .. 4)
        ++A[S[i] - '0'];

    auto B = new long[](10);
    foreach (i; 0 .. 4)
        ++B[T[i] - '0'];

    long win, cnt;
    foreach (i; 1 .. 10) {
        long C = K - A[i] - B[i];
        if (C <= 0)
            continue;

        ++A[i];

        foreach (j; 1 .. 10) {
            long D = K - A[j] - B[j];
            if (D <= 0)
                continue;

            ++B[j];

            long num;
            foreach (k, a; A)
                num += k * (10 ^^ a);
            foreach (k, b; B)
                num -= k * (10 ^^ b);

            if (num > 0)
                win += C * D;
            cnt += C * D;

            --B[j];
        }

        --A[i];
    }

    real res = win.to!real / cnt;
    writefln("%.12f", res);
}
