import std;

void main() {
    int A, B, C;
    readf("%d %d %d\n", A, B, C);

    int[] V = [A, B, C];
    V.sort!"a > b";

    string res = format("%(%d%)", V);
    res.writeln;
}
