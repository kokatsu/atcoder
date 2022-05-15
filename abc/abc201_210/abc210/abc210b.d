import std;

void main() {
    int N;
    readf("%d\n", N);

    auto S = readln.chomp;

    foreach (i, s; S) {
        if (s == '1') {
            writeln(i % 2 == 0 ? "Takahashi" : "Aoki");
            return;
        }
    }
}