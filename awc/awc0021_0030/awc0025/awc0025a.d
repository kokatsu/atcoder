import std;

void main() {
    int N, X;
    readfln("%d %d", N, X);

    int[] A = readln.chomp.split.to!(int[]);

    size_t res = A.count!(a => a < X);
    res.writeln;
}
