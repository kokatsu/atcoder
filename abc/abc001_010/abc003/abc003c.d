import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto R = readln.chomp.split.to!(int[]);

    R.sort!"a > b";

    real res = 0.0;
    foreach_reverse (i; 0 .. K) {
        res = (res + R[i]) / 2.0;
    }

    writefln("%.10f", res);
}