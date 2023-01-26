import std;

void main() {
    int N;
    readf("%d\n", N);

    auto R = new int[](N);
    foreach (i; 0 .. N) readf("%d\n", R[i]);

    R.sort!"a > b";

    int S;
    foreach (i, r; R) {
        S += r * r * (i % 2 == 0 ? 1 : -1);
    }

    auto res = S.to!real * PI;
    writefln("%.10f", res);
}