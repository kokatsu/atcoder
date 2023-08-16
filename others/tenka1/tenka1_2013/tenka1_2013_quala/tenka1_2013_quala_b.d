import std;

void main() {
    int N;
    readf("%d\n", N);

    int res;
    foreach (_; 0 .. N) {
        int S = readln.chomp.split.to!(int[]).sum;
        if (S < 20) {
            ++res;
        }
    }

    res.writeln;
}