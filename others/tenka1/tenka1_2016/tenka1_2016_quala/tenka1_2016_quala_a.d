import std;

int f(int x, int y) {
    int d = x / y;
    return y * d * (d + 1) / 2;
}

void main() {
    int n = 100;

    int res = f(n, 1) - f(n, 3) - f(n, 5) + f(n, 15);
    res.writeln;
}
