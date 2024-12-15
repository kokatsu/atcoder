import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto P = readln.chomp.split.to!(int[]);

    foreach (i, p; P) {
        if (p == X)
            writeln(i + 1);
    }
}
