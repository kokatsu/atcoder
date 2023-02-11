import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto list = new int[](M);
    foreach (i; 0 .. M) {
        int C;
        readf("%d\n", C);

        auto a = readln.chomp.split.to!(int[]);

        a[] -= 1;
        int num;
        foreach (x; a) num += (1 << x);

        list[i] = num;
    }

    int res;
    foreach (i; 0 .. 1<<M) {
        int num;
        foreach (j; 0 .. M) {
            if ((i >> j) & 1) num |= list[j];
        }

        if (num == (1 << N) - 1) ++res;
    }

    res.writeln;
}