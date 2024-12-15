import std;

void main() {
    int N;
    readf("%d\n", N);

    auto p = readln.chomp.split.to!(int[]);

    int cnt;
    foreach (i, x; p) {
        if (x != i + 1)
            ++cnt;
    }

    writeln(cnt <= 2 ? "YES" : "NO");
}
