import std;

void main() {
    int N, T, E;
    readf("%d %d %d\n", N, T, E);

    auto x = readln.chomp.split.to!(int[]);

    int L = T - E, H = T + E;

    foreach (i, u; x) {
        int d = T / u;

        int a = u * d, b = u * (d + 1);
        if ((L <= a && a <= H) || (L <= b && b <= H)) {
            writeln(i+1);
            return;
        }
    }

    writeln(-1);
}