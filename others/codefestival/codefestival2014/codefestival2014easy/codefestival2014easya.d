import std;

void main() {
    int n;
    readf("%d\n", n);

    auto a = readln.chomp.split.to!(real[]);

    real res = iota(n - 1).map!(i => a[i + 1] - a[i]).mean;
    writefln("%.10f", res);
}
