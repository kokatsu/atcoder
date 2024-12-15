import std;

void main() {
    int N;
    readf("%d\n", N);

    auto x = readln.chomp.split.to!(long[]);

    long manhattan = x.map!(a => a.abs).sum;
    manhattan.writeln;

    real euclidian = x.map!(a => a.to!real ^^ 2).sum.sqrt;
    writefln("%.10f", euclidian);

    long chebyshev = x.map!(a => a.abs).maxElement;
    chebyshev.writeln;
}
