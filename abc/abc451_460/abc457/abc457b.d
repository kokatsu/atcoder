import std;

void main() {
    int N;
    readfln("%d", N);

    int[][] A = new int[][](N);
    foreach (i; 0 .. N) {
        A[i] = readln.chomp.split.to!(int[]);
    }

    int X, Y;
    readfln("%d %d", X, Y);

    int res = A[X - 1][Y];
    res.writeln;
}
