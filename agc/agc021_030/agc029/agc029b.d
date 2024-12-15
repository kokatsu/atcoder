import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long[long] cnts;
    foreach (a; A)
        ++cnts[a];

    A.sort!"a > b";

    long res, mx = (1L << 32);
    foreach (a; A) {
        if (cnts[a] == 0)
            continue;
        --cnts[a];

        long num = 1;
        while (num < mx) {
            long diff = num - a;
            if ((diff in cnts) && cnts[diff] > 0) {
                ++res, --cnts[diff];
                break;
            }

            num <<= 1;
        }
    }

    res.writeln;
}
