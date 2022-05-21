import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long f(long x) {
        return x * (x - 1) / 2;
    }

    auto M = A.maxElement;
    auto cnts = new long[](M+1);

    long res, num;
    foreach (i, a; A) {
        ++cnts[a];

        if (i > 1) {
            long L = i.to!long + 1 - cnts[a];
            res += f(L);

            long tmp = num;
            if (cnts[a] > 1) tmp -= f(cnts[a]-1);
            res -= tmp;
        }

        if (cnts[a] > 1) {
            num -= f(cnts[a]-1);
            num += f(cnts[a]);
        }

    }

    res.writeln;
}