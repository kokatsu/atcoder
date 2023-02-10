import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    int N;
    readf("%d\n", N);

    foreach (_; 0 .. N) {
        int l, r;
        readf("%d %d\n", l, r);

        --l, --r;

        while (l < r) {
            S.swapAt(l++, r--);
        }
    }

    S.writeln;
}