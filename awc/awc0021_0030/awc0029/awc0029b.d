import std;

void main() {
    int N, Q;
    readfln("%d %d", N, Q);

    long[] V = readln.chomp.split.to!(long[]);

    long[] R;
    foreach (_; 0 .. Q) {
        int[] query = readln.chomp.split.to!(int[]);
        if (query[0] == 1) {
            V[query[2] - 1] += V[query[1] - 1];
            V[query[1] - 1] = 0;
        }
        else {
            R ~= V[query[1] - 1];
        }
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
