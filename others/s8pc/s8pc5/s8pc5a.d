import std;

void main() {
    int N, T;
    readf("%d %d\n", N, T);

    auto a = readln.chomp.split.to!(int[]);

    int res = a[N - 1];
    foreach (i; 0 .. N - 1) {
        if (a[i] > a[i + 1])
            res += T;
    }

    res.writeln;
}
