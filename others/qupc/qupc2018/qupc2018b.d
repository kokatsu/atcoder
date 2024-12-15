import std;

void main() {
    int Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long A, B, C;
        readf("%d %d %d\n", A, B, C);

        long S = A * 100 + B * 10 + C;

        string res = "No";
        if (S % 2 == 0) {
            long rem = S / 2;

            long a = min(A, rem / 100);
            rem -= a * 100;

            long b = min(B, rem / 10);
            rem -= b * 10;

            long c = min(C, rem);
            rem -= c;

            if (rem == 0)
                res = "Yes";
        }

        res.writeln;
    }
}
