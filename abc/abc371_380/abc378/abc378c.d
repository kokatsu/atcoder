import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[int] D;
    int[] B = new int[](N);
    foreach (i, ref b; B) {
        if (A[i] in D) {
            b = D[A[i]];
        }
        else {
            b = -1;
        }

        D[A[i]] = i.to!int + 1;
    }

    string res = format("%(%d %)", B);
    res.writeln;
}
