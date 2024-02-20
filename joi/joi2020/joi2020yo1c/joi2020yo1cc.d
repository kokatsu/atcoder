import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int res, len, pre;
    foreach (a; A) {
        if (pre <= a) ++len;
        else len = 1;

        res = max(res, len), pre = a;
    }

    res.writeln;
}