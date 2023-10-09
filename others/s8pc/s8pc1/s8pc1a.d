import std;

void main() {
    int N;
    readf("%d\n", N);

    real res = to!real((23-5)*60) / (N - 1);
    writefln("%.10f", res);
}