import std;

void main() {
    long N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split.to!(long[]);

    auto list = new long[][](K);
    foreach (i, x; a) {
        list[i%K] ~= x;
    }

    foreach (i; 0 .. K) {
        list[i].sort;
    }

    auto b = new long[](N);
    foreach (i; 0 .. N) {
        b[i] = list[i%K][i/K];
    }

    writeln(b.isSorted ? "Yes" : "No");
}