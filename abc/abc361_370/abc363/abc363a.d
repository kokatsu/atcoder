import std;

enum int L = 100;

void main() {
    int R;
    readf("%d\n", R);

    int res = L - R % L;
    res.writeln;
}
