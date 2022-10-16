import std;

void main() {
    int N;
    readf("%d\n", N);

    int odds = N / 2 + N % 2;

    real res = odds.to!real / N;
    writefln("%.10f", res);
}