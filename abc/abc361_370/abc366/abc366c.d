import std;

enum int L = 10 ^^ 6;

void main() {
    int Q;
    readf("%d\n", Q);

    int K;
    int[] B = new int[](L + 1);

    int[] V;
    foreach (_; 0 .. Q) {
        int[] query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            if (B[query[1]]++ == 0) {
                ++K;
            }
        }
        else if (query[0] == 2) {
            if (--B[query[1]] == 0) {
                --K;
            }
        }
        else {
            V ~= K;
        }
    }

    string res = format("%(%d\n%)", V);
    res.writeln;
}
