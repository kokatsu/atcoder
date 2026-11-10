import std;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] A = readln.chomp.split.to!(int[]);

    string res = format("%(%(%d %d%)\n%)", A.map!(a => tuple(a / M, a % M)));
    res.writeln;
}
