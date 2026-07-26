import std;

void main() {
    int N;
    readfln("%d", N);

    int[] P = readln.chomp.split.to!(int[]);
    int[] Q = readln.chomp.split.to!(int[]);

    int res;
    while (nextPermutation(P)) {
        if (P >= Q) {
            break;
        }
        ++res;
    }

    res.writeln;
}
