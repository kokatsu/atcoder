import std;

enum int L = 2 * 10 ^^ 5 + 2;

void main() {
    int N, M;
    readfln("%d %d", N, M);

    int[] A = readln.chomp.split.to!(int[]);
    int[] B = readln.chomp.split.to!(int[]);

    int H = L;
    int[] C = new int[](L);
    C[] = -1;
    foreach (i, a; A) {
        if (a < H) {
            C[a .. H] = i.to!int + 1;
            H = a;
        }
    }

    int[] R = new int[](M);
    foreach (i, b; B) {
        R[i] = C[b];
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
