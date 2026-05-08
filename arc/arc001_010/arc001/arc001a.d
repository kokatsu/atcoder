import std;

void main() {
    int N;
    readfln("%d", N);

    string c;
    readfln("%s", c);

    auto minmax = ['1', '2', '3', '4'].map!(x => c.count(x)).array.extrema;

    string res = format("%d %d", minmax[1], minmax[0]);
    res.writeln;
}
