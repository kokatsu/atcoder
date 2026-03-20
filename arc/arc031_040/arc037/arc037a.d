import std;

void main() {
    int N;
    readfln("%d", N);

    int[] m = readln.chomp.split.to!(int[]);

    int res = m.map!(x => max(0, 80 - x)).sum;
    res.writeln;
}
