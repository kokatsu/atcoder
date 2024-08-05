import std;

void main() {
    int T, N;
    readf("%d %d\n", T, N);

    auto M = new int[](N);
    int S;
    foreach (_; 0 .. T) {
        auto P = readln.chomp.split.to!(int[]);
        foreach (i, p; P) {
            if (p > M[i]) {
                S += p - M[i];
                M[i] = p;
            }
        }

        S.writeln;
    }
}