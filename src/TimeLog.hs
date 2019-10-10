module TimeLog where

import Data.Map (Map)
import qualified Data.Map as Map

type Project = String

type Activity = String

type Duration = Integer

type DayStr = String

-- Project `hasA` LogFile --> each project gets its own map
-- Logfile `has` entries
-- entries are grouped by days
-- each day gets a sum

data LogEntry =
  Log Project Activity Duration
  deriving (Show)

-- a list of log entries
type Log = [LogEntry]

newLog :: LogEntry
newLog = Log "project name" "coding" 8


addEntry :: Ord k => Map k [a] -> k -> [a] -> Map k [a]
addEntry m k v = case Map.lookup k m of
                   Nothing -> Map.insert k v m
                   Just vs -> Map.insert k (vs ++ v) m
