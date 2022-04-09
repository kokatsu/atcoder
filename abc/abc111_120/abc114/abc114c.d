import std;

void main() {
    long N;
    readf("%d\n", N);

    long res;

    void f(long num) {
        long tmp = num;
        auto appears = new bool[](3);
        while (tmp) {
            long d = tmp % 10;
            foreach (i; 0 .. 3) {
                if (d == (i + 1) * 2 + 1) appears[i] = true;
            }
            tmp /= 10;
        }

        if (appears.all) ++res;

        foreach (i; 0 .. 3) {
            long next = num * 10 + (i + 1) * 2 + 1;
            if (next <= N) f(next);
        }
    }

    f(0);

    res.writeln;
}