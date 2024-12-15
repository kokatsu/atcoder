import std;

void main() {
    int N;
    readf("%d\n", N);

    auto v = readln.chomp.split.to!(real[]);

    v.sort;

    real res = v[0];
    foreach (i; 1 .. N)
        res = (res + v[i]) / 2.0;

    writefln("%.10f", res);
}
