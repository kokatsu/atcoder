import std;

void main() {
    int Q;
    readf("%d\n", Q);

    int[] queue;
    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            queue ~= query[1];
        }
        else {
            int res = queue[0];
            queue.popFront;
            res.writeln;
        }
    }
}
