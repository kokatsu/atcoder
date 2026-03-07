import std;

void main() {
    int N, X;
    readfln("%d %d", N, X);

    int[] A = readln.chomp.split.to!(int[]);

    int[] B = new int[](N);
    foreach (i, a; A) {
        if (a < X) {
            X = a;
            B[i] = 1;
        }
    }

    string res = format("%(%d\n%)", B);
    res.writeln;
}
