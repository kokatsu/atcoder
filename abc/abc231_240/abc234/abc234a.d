import std;

void main() {
    int f(int x) {
        return x * (x + 2) + 3;
    }

    int t;
    readf("%d\n", t);

    int res = f((f(f(t) + t) + f(f(t))));
    res.writeln;
}
