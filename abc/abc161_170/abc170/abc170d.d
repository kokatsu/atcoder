import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int lim = A.maxElement + 1;

    auto cnts = new int[](lim);
    foreach (a; A) {
        ++cnts[a];
    }

    auto div = new bool[](lim);

    foreach (i; 1 .. lim) {
        if (cnts[i] == 0)
            continue;

        if (cnts[i] > 1)
            div[i] = true;
        foreach (j; iota(i * 2, lim, i)) {
            div[j] = true;
        }
    }

    int res;
    foreach (a; A) {
        if (!div[a])
            ++res;
    }

    res.writeln;
}
