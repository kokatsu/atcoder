import std;

void main() {
    int N;
    readf("%d\n", N);

    auto a = readln.chomp.split.to!(int[]);

    long res, num = 1;
    foreach (A; a) {
        if (A == num) ++num;
        else ++res;
    }

    if (res == N) res = -1;

    res.writeln;
}