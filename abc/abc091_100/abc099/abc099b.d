import std;

enum int D = 10 ^^ 3;

void main() {
    int a, b;
    readf("%d %d\n", a, b);

    int f(int x) {
        return x * (x + 1) / 2;
    }

    int p = 1;
    foreach (i; 2 .. D) {
        int q = f(i), d = q - b;
        if (d == p - a) {
            d.writeln;
            return;
        }

        p = q;
    }
}
