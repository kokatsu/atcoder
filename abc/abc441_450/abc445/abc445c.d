import std;

void main() {
    int N;
    readfln("%d", N);

    int[] A = readln.chomp.split.to!(int[]);

    A[] -= 1;

    int[] B = new int[](N);
    foreach_reverse (i, a; A) {
        if (i == a) {
            B[i] = a;
        }
        else {
            B[i] = B[a];
        }
    }

    B[] += 1;

    string res = format("%(%d %)", B);
    res.writeln;
}
