import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    int M = 200;

    auto list = new long[](M);
    foreach (a; A) {
        ++list[a%M];
    }

    long res;
    foreach (a; A) {
        --list[a%M];

        res += list[a%M];
    }

    res.writeln;
}