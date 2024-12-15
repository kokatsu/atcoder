import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(real[]);

    real D = 0.0;
    foreach (a; A)
        D += 1.0 / a;

    real res = 1.0 / D;
    writefln("%.10f", res);
}
