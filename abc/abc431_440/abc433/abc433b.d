import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    int[] P = new int[](N);
    P[] = -1;
    foreach (i, a; A) {
        foreach_reverse (j; 0 .. i) {
            if (A[j] > a) {
                P[i] = j.to!int + 1;
                break;
            }
        }
    }

    string res = format("%(%d\n%)", P);
    res.writeln;
}
