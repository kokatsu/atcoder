import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long[long] list;
    foreach (a; A) {
        ++list[a];
    }

    long res = N * (N - 1) / 2;
    foreach (a; A) {
        --list[a];
        res -= list[a];
    }

    res.writeln;
}