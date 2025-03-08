import std;

void main() {
    int Q;
    readf("%d\n", Q);

    int[] cards;
    foreach (q; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            cards ~= query[1];
        }
        else {
            int res;
            if (!cards.empty) {
                res = cards.back;
                cards.popBack;
            }
            res.writeln;
        }
    }
}
